.class synthetic Lcom/micloud/midrive/cache/db/SessionJobDatabase$1;
.super Ljava/lang/Object;
.source "SessionJobDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/micloud/midrive/cache/db/SessionJobDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->values()[Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferType:[I

    :try_start_9
    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->UPLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/micloud/midrive/cache/db/SessionJobDatabase$1;->$SwitchMap$com$micloud$midrive$ui$bean$TransferTaskItem$TransferType:[I

    sget-object v1, Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;->DOWNLOAD:Lcom/micloud/midrive/ui/bean/TransferTaskItem$TransferType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
