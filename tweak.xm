//The Forecast UIView we need to move
%hook FCCurrentWeatherView

- (void)layoutSubviews {
	NSLog(@"[BlurSlide] is running");
	self.frame = CGRectMake(330, 390, 120, 70);
}

%end

%ctor{
	//Load the dylib so we can use it's symbols
    dlopen("/Library/MobileSubstrate/DynamicLibraries/Forecast7.dylib", RTLD_NOW);
}
