#include "gtest/gtest.h"
#include "hdfs.h"

#include "native_mini_dfs.h"

class TestCInterface : public ::testing::Test {
public:
    TestCInterface() : tlhCluster(NULL) {
        struct NativeMiniDfsConf conf = {
            1, /* doFormat */
        };

        tlhCluster = nmdCreate(&conf);

        if (NULL == tlhCluster) {
            throw std::runtime_error("cannot start native mini-dfs, \"nmdCreate\" return NULL");
        }

        if (0 != nmdWaitClusterUp(tlhCluster)) {
            throw std::runtime_error("cannot start native mini-dfs, \"nmdWaitClusterUp\" return 0");
        }
    }

    ~TestCInterface() {
        if (tlhCluster) {
            nmdShutdown(tlhCluster);
            nmdFree(tlhCluster);
        }
    }

protected:
    struct NativeMiniDfsCluster* tlhCluster;
};

TEST_F(TestCInterface, TestCase) {
}
