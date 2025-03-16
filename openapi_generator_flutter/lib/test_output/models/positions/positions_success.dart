// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'positions_success.freezed.dart';
part 'positions_success.g.dart';

@freezed
class PositionsSuccess with _$PositionsSuccess {
  const factory PositionsSuccess({
    @JsonKey(name: 'ExecutionID') required String executionId,
    @JsonKey(name: 'AccountType') required int accountType,
    @JsonKey(name: 'Symbol') required String symbol,
    @JsonKey(name: 'SymbolName') required String symbolName,
    @JsonKey(name: 'Exchange') required int exchange,
    @JsonKey(name: 'ExchangeName') required String exchangeName,
    @JsonKey(name: 'SecurityType') required int securityType,
    @JsonKey(name: 'ExecutionDay') required int executionDay,
    @JsonKey(name: 'Price') required double price,
    @JsonKey(name: 'LeavesQty') required double leavesQty,
    @JsonKey(name: 'HoldQty') required double holdQty,
    @JsonKey(name: 'Side') required String side,
    @JsonKey(name: 'Expenses') required double expenses,
    @JsonKey(name: 'Commission') required double commission,
    @JsonKey(name: 'CommissionTax') required double commissionTax,
    @JsonKey(name: 'ExpireDay') required int expireDay,
    @JsonKey(name: 'MarginTradeType') required int marginTradeType,
    @JsonKey(name: 'CurrentPrice') required double currentPrice,
    @JsonKey(name: 'Valuation') required double valuation,
    @JsonKey(name: 'ProfitLoss') required double profitLoss,
    @JsonKey(name: 'ProfitLossRate') required double profitLossRate,
  }) = _PositionsSuccess;

  factory PositionsSuccess.fromJson(Map<String, dynamic> json) =>
      _$PositionsSuccessFromJson(json);
}
