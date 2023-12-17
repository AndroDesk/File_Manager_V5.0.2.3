.class public Lcom/micloud/midrive/constants/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final IS_PAD:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 1
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    .line 3
    sput-boolean v0, Lcom/micloud/midrive/constants/Config;->IS_PAD:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCetus()Z
    .registers 2

    .line 1
    const-string v0, "ro.product.device"

    .line 3
    const-string v1, ""

    .line 5
    invoke-static {v0, v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 9
    const-string v1, "cetus"

    .line 11
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static isFoldDisplay()Z
    .registers 3

    .line 1
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lmiui/cloud/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-ne v0, v2, :cond_b

    .line 11
    const/4 v1, 0x1

    .line 12
    :cond_b
    return v1
.end method
