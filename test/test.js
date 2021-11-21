var assert = require('assert');

describe('Array', function() {
  describe('#indexOf()', function() {
    it('should return -1 when the value is not present', function() {
      assert.equal([1, 2, 3].indexOf(4), -1);
    });
  });
});

describe('Maths', function() {
    describe('#addition()', function() {
      it('should return 2', function() {
        assert.equal( (1+1), 2);
      });
    });

    describe('#multiply()', function() {
        it('should return 55', function() {
          assert.equal( (5*11), 55);
        });
      });

  });
  
  