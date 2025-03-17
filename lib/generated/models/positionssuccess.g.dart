// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positionssuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PositionsSuccess _$PositionsSuccessFromJson(Map<String, dynamic> json) =>
    PositionsSuccess(
      ExecutionID: json['ExecutionID'] as String?,
      AccountType: (json['AccountType'] as num?)?.toInt(),
      Symbol: json['Symbol'] as String?,
      SymbolName: json['SymbolName'] as String?,
      Exchange: (json['Exchange'] as num?)?.toInt(),
      ExchangeName: json['ExchangeName'] as String?,
      SecurityType: (json['SecurityType'] as num?)?.toInt(),
      ExecutionDay: (json['ExecutionDay'] as num?)?.toInt(),
      Price: (json['Price'] as num?)?.toDouble(),
      LeavesQty: (json['LeavesQty'] as num?)?.toDouble(),
      HoldQty: (json['HoldQty'] as num?)?.toDouble(),
      Side: json['Side'] as String?,
      Expenses: (json['Expenses'] as num?)?.toDouble(),
      Commission: (json['Commission'] as num?)?.toDouble(),
      CommissionTax: (json['CommissionTax'] as num?)?.toDouble(),
      ExpireDay: (json['ExpireDay'] as num?)?.toInt(),
      MarginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      CurrentPrice: (json['CurrentPrice'] as num?)?.toDouble(),
      Valuation: (json['Valuation'] as num?)?.toDouble(),
      ProfitLoss: (json['ProfitLoss'] as num?)?.toDouble(),
      ProfitLossRate: (json['ProfitLossRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$PositionsSuccessToJson(PositionsSuccess instance) =>
    <String, dynamic>{
      'ExecutionID': instance.ExecutionID,
      'AccountType': instance.AccountType,
      'Symbol': instance.Symbol,
      'SymbolName': instance.SymbolName,
      'Exchange': instance.Exchange,
      'ExchangeName': instance.ExchangeName,
      'SecurityType': instance.SecurityType,
      'ExecutionDay': instance.ExecutionDay,
      'Price': instance.Price,
      'LeavesQty': instance.LeavesQty,
      'HoldQty': instance.HoldQty,
      'Side': instance.Side,
      'Expenses': instance.Expenses,
      'Commission': instance.Commission,
      'CommissionTax': instance.CommissionTax,
      'ExpireDay': instance.ExpireDay,
      'MarginTradeType': instance.MarginTradeType,
      'CurrentPrice': instance.CurrentPrice,
      'Valuation': instance.Valuation,
      'ProfitLoss': instance.ProfitLoss,
      'ProfitLossRate': instance.ProfitLossRate,
    };
