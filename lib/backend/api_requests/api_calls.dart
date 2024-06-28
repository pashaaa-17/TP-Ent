import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'pawaPay';

/// Start TMDB Group Code

class TmdbGroup {
  static String getBaseUrl({
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) =>
      'https://api.themoviedb.org/3/';
  static Map<String, String> headers = {};
  static TrendingCall trendingCall = TrendingCall();
  static MovieDetailsCall movieDetailsCall = MovieDetailsCall();
  static PopularMoviesCall popularMoviesCall = PopularMoviesCall();
  static SearchMovieCall searchMovieCall = SearchMovieCall();
  static PayoutsFailEnqueuedCall payoutsFailEnqueuedCall =
      PayoutsFailEnqueuedCall();
  static CreateDepositCall createDepositCall = CreateDepositCall();
  static GetDepositCall getDepositCall = GetDepositCall();
  static DepositsResendCallbackCall depositsResendCallbackCall =
      DepositsResendCallbackCall();
  static CreateSessionCall createSessionCall = CreateSessionCall();
  static CreateRefundCall createRefundCall = CreateRefundCall();
  static GetRefundCall getRefundCall = GetRefundCall();
  static RefundsResendCallbackCall refundsResendCallbackCall =
      RefundsResendCallbackCall();
  static AvailabilityCall availabilityCall = AvailabilityCall();
  static WalletBalancesCall walletBalancesCall = WalletBalancesCall();
  static WalletBalancesForCountryCall walletBalancesForCountryCall =
      WalletBalancesForCountryCall();
  static ActiveConfCall activeConfCall = ActiveConfCall();
  static PredictCorrespondentCall predictCorrespondentCall =
      PredictCorrespondentCall();
}

class TrendingCall {
  Future<ApiCallResponse> call({
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'trending',
      apiUrl: '${baseUrl}trending/all/day?language=en-US\'',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $key',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? mediatype(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].media_type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? posterpath(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].poster_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? overview(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].overview''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? releasedate(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].release_date''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? popularity(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].popularity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class MovieDetailsCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    int? movieId,
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'movieDetails',
      apiUrl: '${baseUrl}movie/$movieId?language=en-US',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $key',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.title''',
      ));
  double? voteaverage(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.vote_average''',
      ));
  String? tagline(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.tagline''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  double? popularity(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.popularity''',
      ));
  String? posterpath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.poster_path''',
      ));
  String? overview(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.overview''',
      ));
  String? releasedate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.release_date''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.id''',
      ));
  String? homepage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.homepage''',
      ));
  List<String>? genres(dynamic response) => (getJsonField(
        response,
        r'''$.genres[:].name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  String? backdroppath(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.backdrop_path''',
      ));
}

class PopularMoviesCall {
  Future<ApiCallResponse> call({
    String? payoutId = '',
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'popularMovies',
      apiUrl: '${baseUrl}movie/popular',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $key',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<double>? popularity(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].popularity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  List<String>? posterpath(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].poster_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SearchMovieCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? query = '',
    String? language = 'en-US',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'searchMovie',
      apiUrl: '${baseUrl}search/movie',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $key',
      },
      params: {
        'query': query,
        'language': "en-US",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List<String>? backdroppath(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].backdrop_path''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<int>? id(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  List<double>? popularity(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].popularity''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
}

class PayoutsFailEnqueuedCall {
  Future<ApiCallResponse> call({
    String? payoutId = '',
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'payoutsFailEnqueued',
      apiUrl: '$baseUrl/payouts/fail-enqueued/$payoutId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateDepositCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createDeposit',
      apiUrl: '$baseUrl/deposits',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetDepositCall {
  Future<ApiCallResponse> call({
    String? depositId = '',
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getDeposit',
      apiUrl: '$baseUrl/deposits/$depositId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $sandbox',
      },
      params: {
        'depositId': depositId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? depositId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].depositId''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].status''',
      ));
  String? payerNumber(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].payer.address.value''',
      ));
  String? customerTimestamp(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$[:].customerTimestamp''',
      ));
  String? correspondent(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].correspondent''',
      ));
  String? requestedAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].requestedAmount''',
      ));
  String? depositedAmount(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].depositedAmount''',
      ));
}

class DepositsResendCallbackCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'depositsResendCallback',
      apiUrl: '$baseUrl/deposits/resend-callback',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CreateSessionCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? depositId = '',
    String? returnUrl = '',
    String? statementDescription = '',
    String? reason = '',
    double? amount,
    String? phoneNo = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
{
  "depositId": "$depositId",
  "returnUrl": "$returnUrl",
  "statementDescription": "$statementDescription",
  "amount": "$amount",
  "msisdn": "$phoneNo",
  "country": "ZMB",
  "reason": "$reason"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create-session',
      apiUrl: '$baseUrl/v1/widget/sessions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $sandbox',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? redirectUrl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.redirectUrl''',
      ));
  String? errorMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorMessage''',
      ));
  String? errorId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.errorId''',
      ));
}

class CreateRefundCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'createRefund',
      apiUrl: '$baseUrl/refunds',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRefundCall {
  Future<ApiCallResponse> call({
    String? refundId = '',
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'getRefund',
      apiUrl: '$baseUrl/refunds/$refundId',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class RefundsResendCallbackCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'refundsResendCallback',
      apiUrl: '$baseUrl/refunds/resend-callback',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AvailabilityCall {
  Future<ApiCallResponse> call({
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'availability',
      apiUrl: '$baseUrl/availability',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletBalancesCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wallet-balances',
      apiUrl: '$baseUrl/v1/wallet-balances',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class WalletBalancesForCountryCall {
  Future<ApiCallResponse> call({
    String? country = '',
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'wallet-balances-for-country',
      apiUrl: '$baseUrl/v1/wallet-balances/$country',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ActiveConfCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'active_conf',
      apiUrl: '$baseUrl/active-conf',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class PredictCorrespondentCall {
  Future<ApiCallResponse> call({
    String? bearerAuth = '',
    String? key =
        'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmZjZkODExZGY5MmNmZTkxZDMxMTNkMGUwOWEwZDQzOCIsIm5iZiI6MTcxOTQzMzQ2MS45NDkwNjYsInN1YiI6IjY2N2M3ODNhNmE0N2UxYmNhMWFhNzI0NyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.YJEgyS6aG-1T2zEvtWS6PFwptjXq_JQ8Ebnf4c3xMT0',
    String? sandbox = '.',
  }) async {
    final baseUrl = TmdbGroup.getBaseUrl(
      key: key,
      sandbox: sandbox,
    );

    const ffApiRequestBody = '''
{
  "msisdn": "+260 763-456789"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'predict-correspondent',
      apiUrl: '$baseUrl/v1/predict-correspondent',
      callType: ApiCallType.POST,
      headers: {
        'Authorization': 'Bearer $bearerAuth',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End TMDB Group Code

/// Start DPO Group Code

class DpoGroup {
  static String getBaseUrl({
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) =>
      'https://secure.3gdirectpay.com/API';
  static Map<String, String> headers = {};
  static CreateTokenCall createTokenCall = CreateTokenCall();
  static ChargeTokenCreditCardCall chargeTokenCreditCardCall =
      ChargeTokenCreditCardCall();
  static ChargeTokenCreditCardCopyCopyCall chargeTokenCreditCardCopyCopyCall =
      ChargeTokenCreditCardCopyCopyCall();
  static ChargeTokenCreditCardCopyCall chargeTokenCreditCardCopyCall =
      ChargeTokenCreditCardCopyCall();
  static VerifyTokenCall verifyTokenCall = VerifyTokenCall();
}

class CreateTokenCall {
  Future<ApiCallResponse> call({
    double? amount,
    String? serviceDate = '',
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) async {
    final baseUrl = DpoGroup.getBaseUrl(
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
<API3G>
  <CompanyToken>$sandbox</CompanyToken>
  <Request>createToken</Request>
  <Transaction>
    <PaymentAmount>$amount</PaymentAmount>
    <PaymentCurrency>ZMW</PaymentCurrency>
    <customerCountry>ZM</customerCountry>
    <customerDialCode>ZM</customerDialCode>
  </Transaction>
  <Services>
    <Service>
      <ServiceType>5525</ServiceType>
      <ServiceDescription>Music Request Payment</ServiceDescription>
      <ServiceDate>2024/05/18 18:20</ServiceDate>
    </Service>
  </Services>
  <Additional>
    <BlockPayment>CC</BlockPayment>
    <BlockPayment>PP</BlockPayment>
  </Additional>
</API3G>''';
    return ApiManager.instance.makeApiCall(
      callName: 'createToken',
      apiUrl: '$baseUrl/v6/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChargeTokenCreditCardCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? pan,
    int? cvv,
    int? expiryDate,
    String? cardholderName = '',
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) async {
    final baseUrl = DpoGroup.getBaseUrl(
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<API3G>
  <CompanyToken>$sandbox</CompanyToken>
  <Request>chargeTokenCreditCard</Request>
  <TransactionToken>$token</TransactionToken>
  <CreditCardNumber>$pan</CreditCardNumber>
  <CreditCardExpiry>0824</CreditCardExpiry>
  <CreditCardCVV>$cvv</CreditCardCVV>
  <CardHolderName>$cardholderName</CardHolderName>
</API3G>''';
    return ApiManager.instance.makeApiCall(
      callName: 'chargeTokenCreditCard',
      apiUrl: '$baseUrl/v6/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChargeTokenCreditCardCopyCopyCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? pan,
    int? cvv,
    int? expiryDate,
    String? cardholderName = '',
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) async {
    final baseUrl = DpoGroup.getBaseUrl(
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<API3G>
  <CompanyToken>$sandbox</CompanyToken>
  <Request>chargeTokenCreditCard</Request>
  <TransactionToken>$token</TransactionToken>
  <CreditCardNumber>$pan</CreditCardNumber>
  <CreditCardExpiry>0824</CreditCardExpiry>
  <CreditCardCVV>$cvv</CreditCardCVV>
  <CardHolderName>$cardholderName</CardHolderName>
</API3G>''';
    return ApiManager.instance.makeApiCall(
      callName: 'chargeTokenCreditCard Copy Copy',
      apiUrl: '$baseUrl/v7/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ChargeTokenCreditCardCopyCall {
  Future<ApiCallResponse> call({
    String? token = '',
    int? pan,
    int? cvv,
    int? expiryDate,
    String? cardholderName = '',
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) async {
    final baseUrl = DpoGroup.getBaseUrl(
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<API3G>
  <CompanyToken>$sandbox</CompanyToken>
  <Request>chargeTokenCreditCard</Request>
  <TransactionToken>$token</TransactionToken>
  <CreditCardNumber>$pan</CreditCardNumber>
  <CreditCardExpiry>$expiryDate</CreditCardExpiry>
  <CreditCardCVV>$cvv</CreditCardCVV>
  <CardHolderName>$cardholderName</CardHolderName>
</API3G>''';
    return ApiManager.instance.makeApiCall(
      callName: 'chargeTokenCreditCard Copy',
      apiUrl: '$baseUrl/v7/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class VerifyTokenCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? sandbox = '8D3DA73D-9D7F-4E09-96D4-3D44E7A83EA3',
  }) async {
    final baseUrl = DpoGroup.getBaseUrl(
      sandbox: sandbox,
    );

    final ffApiRequestBody = '''
<?xml version="1.0" encoding="utf-8"?>
<API3G>
  <CompanyToken>$sandbox</CompanyToken>
  <Request>verifyToken</Request>
  <TransactionToken>$token</TransactionToken>
</API3G>''';
    return ApiManager.instance.makeApiCall(
      callName: 'verifyToken',
      apiUrl: '$baseUrl/v6/',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.TEXT,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End DPO Group Code

class NewsAPICall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'NewsAPI',
      apiUrl:
          'https://us-central1-groove-wish.cloudfunctions.net/getEntertainmentNews',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? content(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].content''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? publishedAt(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].publishedAt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? urlToImage(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].urlToImage''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? author(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? source(dynamic response) => (getJsonField(
        response,
        r'''$.articles[:].source.name''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class OpenWeatherCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'OpenWeather',
      apiUrl: 'api.openweathermap.org/data/2.5/forecast',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'lat': "-15.416667",
        'lon': "28.283333",
        'appid': "1e9bea2a82477faa677a71a1beb78f09",
        'units': "metric",
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? name(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.city.name''',
      ));
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.list[:].weather[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? temp(dynamic response) => (getJsonField(
        response,
        r'''$.list[:].main.temp''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? icon(dynamic response) => (getJsonField(
        response,
        r'''$.list[:].weather[:].icon''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? date(dynamic response) => (getJsonField(
        response,
        r'''$.list[:].dt''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
