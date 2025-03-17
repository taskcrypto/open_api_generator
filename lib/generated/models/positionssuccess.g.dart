// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'positionssuccess.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PositionsSuccessImpl _$$PositionsSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$PositionsSuccessImpl(
      executionID: json['ExecutionID'] as String?,
      accountType: (json['AccountType'] as num?)?.toInt(),
      symbol: json['Symbol'] as String?,
      symbolName: json['SymbolName'] as String?,
      exchange: (json['Exchange'] as num?)?.toInt(),
      exchangeName: json['ExchangeName'] as String?,
      securityType: (json['SecurityType'] as num?)?.toInt(),
      executionDay: (json['ExecutionDay'] as num?)?.toInt(),
      price: (json['Price'] as num?)?.toDouble(),
      leavesQty: (json['LeavesQty'] as num?)?.toDouble(),
      holdQty: (json['HoldQty'] as num?)?.toDouble(),
      side: json['Side'] as String?,
      expenses: (json['Expenses'] as num?)?.toDouble(),
      commission: (json['Commission'] as num?)?.toDouble(),
      commissionTax: (json['CommissionTax'] as num?)?.toDouble(),
      expireDay: (json['ExpireDay'] as num?)?.toInt(),
      marginTradeType: (json['MarginTradeType'] as num?)?.toInt(),
      currentPrice: (json['CurrentPrice'] as num?)?.toDouble(),
      valuation: (json['Valuation'] as num?)?.toDouble(),
      profitLoss: (json['ProfitLoss'] as num?)?.toDouble(),
      profitLossRate: (json['ProfitLossRate'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PositionsSuccessImplToJson(
        _$PositionsSuccessImpl instance) =>
    <String, dynamic>{
      'ExecutionID': instance.executionID,
      'AccountType': instance.accountType,
      'Symbol': instance.symbol,
      'SymbolName': instance.symbolName,
      'Exchange': instance.exchange,
      'ExchangeName': instance.exchangeName,
      'SecurityType': instance.securityType,
      'ExecutionDay': instance.executionDay,
      'Price': instance.price,
      'LeavesQty': instance.leavesQty,
      'HoldQty': instance.holdQty,
      'Side': instance.side,
      'Expenses': instance.expenses,
      'Commission': instance.commission,
      'CommissionTax': instance.commissionTax,
      'ExpireDay': instance.expireDay,
      'MarginTradeType': instance.marginTradeType,
      'CurrentPrice': instance.currentPrice,
      'Valuation': instance.valuation,
      'ProfitLoss': instance.profitLoss,
      'ProfitLossRate': instance.profitLossRate,
    };
