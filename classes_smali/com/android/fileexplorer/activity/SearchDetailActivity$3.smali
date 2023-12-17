.class synthetic Lcom/android/fileexplorer/activity/SearchDetailActivity$3;
.super Ljava/lang/Object;
.source "SearchDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/activity/SearchDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$activity$SearchDetailActivity$SEARCH_SHOW_STATE:[I

.field public static final synthetic $SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    .line 1
    invoke-static {}, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->values()[Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 8
    sput-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$activity$SearchDetailActivity$SEARCH_SHOW_STATE:[I

    .line 10
    const/4 v1, 0x1

    .line 11
    :try_start_a
    sget-object v2, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 13
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result v2

    .line 17
    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    .line 19
    :catch_12
    const/4 v0, 0x2

    .line 20
    :try_start_13
    sget-object v2, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$activity$SearchDetailActivity$SEARCH_SHOW_STATE:[I

    .line 22
    sget-object v3, Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/activity/SearchDetailActivity$SEARCH_SHOW_STATE;

    .line 24
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    move-result v3

    .line 28
    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    .line 30
    :catch_1d
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 33
    move-result-object v2

    .line 34
    array-length v2, v2

    .line 35
    new-array v2, v2, [I

    .line 37
    sput-object v2, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 39
    :try_start_26
    sget-object v3, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 41
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result v3

    .line 45
    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    .line 47
    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 49
    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 54
    move-result v2

    .line 55
    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    .line 57
    :catch_38
    :try_start_38
    sget-object v0, Lcom/android/fileexplorer/activity/SearchDetailActivity$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    .line 59
    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    .line 61
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    move-result v1

    .line 65
    const/4 v2, 0x3

    .line 66
    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    .line 68
    :catch_43
    return-void
.end method
