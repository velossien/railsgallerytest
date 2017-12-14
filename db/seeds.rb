# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

images = Image.create(
    [
        {
            url:'https://img.buzzfeed.com/buzzfeed-static/static/2014-01/campaign_images/webdr06/7/14/50-reasons-why-nicolas-cage-is-the-greatest-human-1-5571-1389124720-1_big.jpg',
            alt:'nickalt1',
            caption:'nickcap1'
        },
        {
            url:'https://images-na.ssl-images-amazon.com/images/M/MV5BMTUzMDM4Nzk2MV5BMl5BanBnXkFtZTcwNTcwNjExOQ@@._V1_UY317_CR1,0,214,317_AL_.jpg',
            alt:'nickalt2',
            caption:'nickcap2'
        },
        {
            url:'https://nerdist.com/wp-content/uploads/2015/12/Nicolas-Cage-Con-Air-322x268.jpg',
            alt:'nickalt3',
            caption:'nickcap3'
        },
        {
            url:'http://1.bp.blogspot.com/-4x8LvBUopUg/UP_3v-hRgcI/AAAAAAAAC90/rerm6FhEJ4I/s1600/Anthony+Lamb+-+Nick+Cage+as+Salvador+Dali.jpg',
            alt:'nickalt4',
            caption:'nickcap4'
        }
    ]
)