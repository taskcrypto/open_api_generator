// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions_success.freezed.dart';
part 'positions_success.g.dart';

@freezed
class PositionsSuccess with _$PositionsSuccess {
  const factory PositionsSuccess({
    @JsonKey(name: 'ExecutionID') String? executionId,
    @JsonKey(name: 'AccountType') int? accountType,
    @JsonKey(name: 'Symbol') String? symbol,
    @JsonKey(name: 'SymbolName') String? symbolName,
    @JsonKey(name: 'Exchange') int? exchange,
    @JsonKey(name: 'ExchangeName') String? exchangeName,
    @JsonKey(name: 'SecurityType') int? securityType,
    @JsonKey(name: 'ExecutionDay') int? executionDay,
    @JsonKey(name: 'Price') double? price,
    @JsonKey(name: 'LeavesQty') double? leavesQty,
    @JsonKey(name: 'HoldQty') double? holdQty,
    @JsonKey(name: 'Side') String? side,
    @JsonKey(name: 'Expenses') double? expenses,
    @JsonKey(name: 'Commission') double? commission,
    @JsonKey(name: 'CommissionTax') double? commissionTax,
    @JsonKey(name: 'ExpireDay') int? expireDay,
    @JsonKey(name: 'MarginTradeType') int? marginTradeType,
    @JsonKey(name: 'CurrentPrice') double? currentPrice,
    @JsonKey(name: 'Valuation') double? valuation,
    @JsonKey(name: 'ProfitLoss') double? profitLoss,
    @JsonKey(name: 'ProfitLossRate') double? profitLossRate,
  }) = _PositionsSuccess;

  factory PositionsSuccess.fromJson(Map<String, dynamic> json) =>
      _$PositionsSuccessFromJson(json);
}
