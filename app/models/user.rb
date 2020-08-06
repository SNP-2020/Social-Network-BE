class User < ApplicationRecord
      validates :FirstName,presence: true,
           length:{minimum: 3, maximum: 10 },
           uniqueness:{case_sensetive:false}

      validates :LastName,presence: true,
           length:{minimum: 3, maximum: 10 },
           uniqueness:{case_sensetive:false}

      validates :email,presence: true,
          length:{maximum: 100 },
          uniqueness:{case_sensetive:false}

end
