.class synthetic Lcom/android/fileexplorer/view/FabMenuLayout$6;
.super Ljava/lang/Object;
.source "FabMenuLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/view/FabMenuLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    invoke-static {}, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->values()[Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$6;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    :try_start_9
    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Doc:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$6;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->Sort:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/android/fileexplorer/view/FabMenuLayout$6;->$SwitchMap$com$android$fileexplorer$view$FabMenuLayout$MenuGroupType:[I

    sget-object v1, Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;->ViewType:Lcom/android/fileexplorer/view/FabMenuLayout$MenuGroupType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    return-void
.end method
