function OG_prng_create(_base,_power)
{
	var rng = {};
	rng.base = _base;
    rng.power = _power;
	rng.Roll = 0;
	rng.take_value = 0;
	return rng;
}

function OG_prng_roll(_rng)
{
	randomise()
	_rng.Roll = irandom_range(1,100)
	if (_rng.base < _rng.Roll - (_rng.take_value*_rng.power))
	{
		_rng.take_value++;
		return true;
	}
	else
	{
		_rng.take_value = 0;
		return false;
	}
	/*Suppose to be like this.
	if (_rng.base >= _rng.Roll - (_rng.take_value*_rng.power))
	{
		_rng.take_value = 0;
		return true;
	}
	else
	{
		_rng.take_value++;
		return false;
	}
	*/
}