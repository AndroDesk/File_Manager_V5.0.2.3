.class synthetic Lcom/android/cloud/widget/ListContainerView$1;
.super Ljava/lang/Object;
.source "ListContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/cloud/widget/ListContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/cloud/constant/PageConstant$PageStatus;->values()[Lcom/android/cloud/constant/PageConstant$PageStatus;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    :try_start_9
    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Guide:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Empty:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Loading:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->List:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/android/cloud/widget/ListContainerView$1;->$SwitchMap$com$android$cloud$constant$PageConstant$PageStatus:[I

    sget-object v1, Lcom/android/cloud/constant/PageConstant$PageStatus;->Refreshing:Lcom/android/cloud/constant/PageConstant$PageStatus;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    return-void
.end method