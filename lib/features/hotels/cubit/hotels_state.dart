abstract class HotelsStates {}

class HotelsInitial extends HotelsStates {}

class HotelsError extends HotelsStates {}

class HotelsChangePageView extends HotelsStates {}

class HotelsPageViewGoRight extends HotelsStates {}

class HotelsDetermineContentOpacity extends HotelsStates {}

class HotelsJumToCurrentIndex extends HotelsStates {}

class AddListenerToController extends HotelsStates {}

class GetHotelsLoading extends HotelsStates {}

class GetHotelsSuccess extends HotelsStates {}

class GetMoreHotelsLoading extends HotelsStates {}

class GetMoreHotelsSuccess extends HotelsStates {}

class GetMoreHotelsError extends HotelsStates {}

class ResetHotelsCubitValues extends HotelsStates {}
