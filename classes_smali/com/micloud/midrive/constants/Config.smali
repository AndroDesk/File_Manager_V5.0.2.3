.class public Lcom/micloud/midrive/constants/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final IS_PAD:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    sput-boolean v0, Lcom/micloud/midrive/constants/Config;->IS_PAD:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isCetus()Z
    .registers 2

    const-string v0, "ro.product.device"

    const-string v1, ""

    invoke-static {v0, v1}, Lmiui/cloud/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cetus"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isFoldDisplay()Z
    .registers 3

    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/cloud/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_b

    const/4 v1, 0x1

    :cond_b
    return v1
.end method
