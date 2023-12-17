.class synthetic Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;
.super Ljava/lang/Object;
.source "OpenProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/opensdk/pdc/OpenProfileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 1
    invoke-static {}, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->values()[Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 10
    :try_start_9
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->UNRETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    .line 19
    :catch_12
    :try_start_12
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 21
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->RETRIABLE_ERROR:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 23
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x2

    .line 28
    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/xiaomi/opensdk/pdc/OpenProfileManager$1;->$SwitchMap$com$xiaomi$opensdk$pdc$Constants$ErrorType:[I

    .line 32
    sget-object v1, Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;->AUTH_FAILED:Lcom/xiaomi/opensdk/pdc/Constants$ErrorType;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 37
    move-result v1

    .line 38
    const/4 v2, 0x3

    .line 39
    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    .line 41
    :catch_28
    return-void
.end method
