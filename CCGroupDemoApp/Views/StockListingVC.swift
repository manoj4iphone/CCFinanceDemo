//
//  ViewController.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 08/12/21.
//

import UIKit

class StockListingVC: ParentViewController {
    
    private let summaryViewModel: SummaryViewModel = SummaryViewModel()
    private var isSearchStarted : Bool = false
    private var isSearchBarVisible : Bool = false
    private var strSymbol: String?
    private var btnSearch : UIBarButtonItem?
    private var searchBar = UISearchBar(frame: .zero)
    private var arrStocks = [Results]()
    private var arrSearchedStocks = [Results]()
    private var timer: Timer?
    
    @IBOutlet private weak var lbNoResults: GenericLabel!
    
    @IBOutlet private weak var tblStockListing: UITableView! {
        didSet {
            tblStockListing.tableFooterView = UIView(frame: .zero)
            tblStockListing.rowHeight = UITableView.automaticDimension
            tblStockListing.estimatedRowHeight = 50
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let cell = sender as? StockListCell {
            
            if let indexPath = self.tblStockListing.indexPath(for: cell) {
                
                if let stockDetailsVC = segue.destination as? StockDetailsVC {
                    stockDetailsVC.symbol = isSearchStarted ? arrSearchedStocks[indexPath.row].symbol : arrStocks[indexPath.row].symbol
                }
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.extendedLayoutIncludesOpaqueBars = true
        startTimer()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationController?.navigationBar.isTranslucent = false
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.view.setNeedsLayout() // force update layout
        navigationController?.view.layoutIfNeeded() // to fix height of the navigation bar
        stopTimer()
    }
    
    private func setupUI() {
        
        self.title = "Stocks"
        if #available(iOS 15.0, *) {
            self.tblStockListing.isPrefetchingEnabled = false
        }
        self.tblStockListing.reloadData()
        
        searchBar.delegate = self
        searchBar.placeholder = "Enter name or symbol..."
        searchBar.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        let arr = searchBar.subviews.flatMap { $0.subviews }
        
        if arr.count > 1 {
            let containerView = arr[1]
            if let sc = (containerView.subviews.filter { $0 is UITextField }).first as? UITextField {
                sc.font = UIFont.init(name: "HelveticaNeue-Thin", size: 15)!
                sc.textColor = UIColor.black
                sc.font = sc.font?.resultFont
            }
        }
        
        btnSearch = UIBarButtonItem(barButtonSystemItem: .search, target:self , action: #selector(btnSearchClicked(sender:)))
        navigationItem.rightBarButtonItem = btnSearch!
        
        getStockList()
        
    }
}


// MARK: -
// MARK: - Get data functions

extension StockListingVC {
    
    private func getStockList() {
        
        summaryViewModel.getMarketSummary {  (response) in
            
            DispatchQueue.main.async {
                
                switch response {
                    
                case .success(let summary):
                    debugPrint("list is: \(String(describing: summary))")
                    
                    //To do data fill and set up the list...
                    
                    if let `list` = summary?.marketSummaryAndSparkResponse?.result {
                        self.arrStocks = list
                    }
                    
                case .failure(let apiError):
                    debugPrint(apiError.reason ?? "No reason found")
                }
                self.updateStockDataBySearch()
            }
        }
    }
    
    private func startTimer() {
        
        if self.timer != nil {
            self.timer?.invalidate()
            self.timer = nil
        }
        
        self.timer = Timer.scheduledTimer(timeInterval: 8.0, target: self, selector: (#selector(self.updateTimer)), userInfo: nil, repeats: true)
        
        RunLoop.current.add(timer!, forMode: RunLoop.Mode.common)
    }
    
    @objc func updateTimer() {
        getStockList()
    }
    
    private func stopTimer() {
        
        guard let _ = timer else {
            return
        }
        
        timer!.invalidate()
        timer = nil
    }
}


// MARK: -
// MARK: - Tableview delegate and datasource methods

extension StockListingVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return isSearchStarted ? arrSearchedStocks.count : arrStocks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let stock = isSearchStarted ? arrSearchedStocks[indexPath.row] : arrStocks[indexPath.row]
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "StockListCell") as? StockListCell {
            
            cell.lbRank.text = "\(indexPath.row+1)"
            cell.lbName.text = (stock.shortName != nil && stock.shortName != "") ? stock.shortName : "-"
            cell.lbSymbol.text = stock.symbol
            cell.lbType.text = stock.quoteType
            cell.lbExchange.text = stock.exchange
            cell.lbClose.text = stock.regularMarketPreviousClose?.fmt
            
            return cell
        }
        
        return UITableViewCell()
    }
}

// MARK: -
// MARK: - Search bar delegate methods

extension StockListingVC: UISearchBarDelegate {
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        updateStockDataBySearch()
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        toggleNavigationTitleView()
        removeSearchbar()
    }
}

// MARK: -
// MARK: - Functions

extension StockListingVC {
    
    @objc private func btnSearchClicked(sender: UIBarButtonItem) {
        toggleNavigationTitleView()
    }
    
    private func toggleNavigationTitleView() {
        if isSearchBarVisible {
            removeSearchbar()
        } else {
            addSearchbar()
        }
        updateStockDataBySearch()
    }
    
    private func showSearchBarCancelButton() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            self.searchBar.becomeFirstResponder()
            self.searchBar.showsCancelButton = true
        }
    }
    
    private func addSearchbar() {
        self.navigationItem.titleView = searchBar
        self.navigationItem.rightBarButtonItems = nil
        isSearchBarVisible = true
        showSearchBarCancelButton()
    }

    private func removeSearchbar() {
        self.navigationItem.titleView = nil
        self.navigationItem.rightBarButtonItem = btnSearch!
        isSearchBarVisible = false
    }
    
    private func updateStockDataBySearch() {
        
        guard let text = searchBar.text else {
            return
        }
        
        if text.count > 0 {
            isSearchStarted = true
            arrSearchedStocks = arrStocks.filter({ (result) in
                return (result.shortName != nil && result.shortName!.localizedCaseInsensitiveContains(text)) || (result.symbol != nil && result.symbol!.localizedCaseInsensitiveContains(text))
            })
        } else {
            isSearchStarted = false
            arrSearchedStocks = []
        }
        
        tblStockListing.reloadData()
        
        self.lbNoResults.isHidden = self.isSearchStarted ? self.arrSearchedStocks.count > 0 : self.arrStocks.count > 0
        self.tblStockListing.isHidden = !self.lbNoResults.isHidden
    }
}
