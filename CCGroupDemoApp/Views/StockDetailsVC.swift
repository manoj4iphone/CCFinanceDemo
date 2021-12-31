//
//  StockDetailsVC.swift
//  CCGroupDemoApp
//
//  Created by sft_mac on 23/12/21.
//

import UIKit

class StockDetailsVC: UIViewController {
    
    var symbol: String?
    private let stockDetailsViewModel: StockDetailsViewModel = StockDetailsViewModel()
    private var arrSections: [StockSectionModel]?
    
    @IBOutlet private weak var tblStockDetails: UITableView! {
        didSet {
            tblStockDetails.tableFooterView = UIView(frame: .zero)
            tblStockDetails.tableHeaderView = UIView(frame: .zero)
            tblStockDetails.rowHeight = UITableView.automaticDimension
            tblStockDetails.estimatedRowHeight = 50
            tblStockDetails.sectionHeaderHeight = 40
            tblStockDetails.separatorStyle = .none
            tblStockDetails.contentInsetAdjustmentBehavior = .never
            tblStockDetails.register(UINib(nibName: "HeaderCell", bundle: nil), forCellReuseIdentifier: "HeaderCell")
            
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
}


extension StockDetailsVC {
    
    private func setupUI() {
        self.title = "Details"
        if #available(iOS 15.0, *) {
            self.tblStockDetails.isPrefetchingEnabled = false
        }
        getStockDetails()
    }
    
    private func getStockDetails() {
        
        guard symbol != nil else {
            return
        }
        
        let request = StockDetailsRequest(symbol: symbol!)
        
        stockDetailsViewModel.getStockDetails(stockDetailsRequest: request) { (response) in
            
            DispatchQueue.main.async {
                
                switch response {
                    
                case .success(let details):
                    debugPrint("Stock Details Response is: \(String(describing: details))")
                    self.setScreenDetails(details: details)
                    
                    
                case .failure(let apiError):
                    debugPrint(apiError.reason ?? "No reason found")
                }
            }
        }
    }
    
    private func setScreenDetails(details: StockDetailsResponse?) {
        
        //Todo setup page details..
        
        //Overview section
        
        let name = StockDetailsModel(label: "Name", value: details?.quoteType?.shortName)
        let symbol = StockDetailsModel(label: "Symbol", value: details?.quoteType?.symbol)
        let quoteType = StockDetailsModel(label: "Quote", value: details?.quoteType?.quoteType)
        let currency = StockDetailsModel(label: "Currency", value: details?.price?.currency)
        
        let overViewData = StockSectionModel(sectionName: "Overview", data: [name, symbol, quoteType, currency])
        
        //Market data section
        
        let open = StockDetailsModel(label: "Open", value: details?.summaryDetail?.open?.raw?.currencyFormattedString)
        let close = StockDetailsModel(label: "Close", value: details?.summaryDetail?.previousClose?.raw?.currencyFormattedString)
        
        let marketVol = StockDetailsModel(label: "Market Vol", value: details?.summaryDetail?.regularMarketVolume?.raw?.currencyFormattedString)
        let marketPrice = StockDetailsModel(label: "Market Price", value: details?.price?.regularMarketPrice?.raw?.currencyFormattedString)
        
        let dayHigh = StockDetailsModel(label: "Day High", value: details?.summaryDetail?.dayHigh?.raw?.currencyFormattedString)
        let dayLow = StockDetailsModel(label: "Day Low", value: details?.summaryDetail?.dayLow?.raw?.currencyFormattedString)
        
        let fiftyTwoWeekHigh = StockDetailsModel(label: "52w High", value: details?.summaryDetail?.fiftyTwoWeekHigh?.raw?.currencyFormattedString)
        let fiftyTwoWeekLow = StockDetailsModel(label: "52w Low", value: details?.summaryDetail?.fiftyTwoWeekHigh?.raw?.currencyFormattedString)
        
        let tenDayTrVol = StockDetailsModel(label: "10d Trading Vol", value: details?.price?.averageDailyVolume10Day?.raw?.currencyFormattedString)
        let threeMonTrVol = StockDetailsModel(label: "3mon Trading Vol", value: details?.price?.averageDailyVolume3Month?.raw?.currencyFormattedString)
        
        let marketData = StockSectionModel(sectionName: "Market Data", data: [open,
                                                                           close,
                                                                           marketVol,
                                                                           marketPrice,
                                                                           dayHigh,
                                                                           dayLow,
                                                                           fiftyTwoWeekHigh,
                                                                           fiftyTwoWeekLow,
                                                                           tenDayTrVol,
                                                                           threeMonTrVol
                                                                          ])
        self.arrSections = [overViewData, marketData]
        self.tblStockDetails.reloadData()
    }
}


// MARK: -
// MARK: - Table view delegate methods

extension StockDetailsVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        let section = arrSections?[section]
        return section?.data?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell") as? ItemCell {
            
            let section = arrSections?[indexPath.section]
            let item = section?.data?[indexPath.item]
            
            cell.lbLabel.text = item?.label
            cell.lbText.text = item?.value
            
            return cell
        }
        
        return UITableViewCell()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrSections?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let section = arrSections?[section]
        
        if let header = tableView.dequeueReusableCell(withIdentifier: "HeaderCell") as? HeaderCell {
            header.lbHeaderTitle.text = section?.sectionName
            return header.contentView
        }
        
        return UIView()
    }
}

