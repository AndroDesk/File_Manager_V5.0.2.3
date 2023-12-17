.class synthetic Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;
.super Ljava/lang/Object;
.source "Grouper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/apptag/strategy/group/Grouper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$apptag$strategy$group$FileItemGroupMethod:[I

.field public static final synthetic $SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->values()[Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$group$FileItemGroupMethod:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->DATE:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$group$FileItemGroupMethod:[I

    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;->APP:Lcom/android/fileexplorer/apptag/strategy/group/FileItemGroupMethod;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->values()[Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    :try_start_26
    sget-object v3, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->DATE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    sget-object v2, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->NAME:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->SIZE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    :try_start_43
    sget-object v0, Lcom/android/fileexplorer/apptag/strategy/group/Grouper$1;->$SwitchMap$com$android$fileexplorer$apptag$strategy$sort$Sorter$Method:[I

    sget-object v1, Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;->TYPE:Lcom/android/fileexplorer/apptag/strategy/sort/Sorter$Method;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_43 .. :try_end_4e} :catch_4e

    :catch_4e
    return-void
.end method
