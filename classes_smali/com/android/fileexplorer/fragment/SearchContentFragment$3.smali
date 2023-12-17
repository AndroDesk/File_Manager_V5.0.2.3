.class synthetic Lcom/android/fileexplorer/fragment/SearchContentFragment$3;
.super Ljava/lang/Object;
.source "SearchContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/SearchContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1009
    name = null
.end annotation


# static fields
.field public static final synthetic $SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

.field public static final synthetic $SwitchMap$com$android$fileexplorer$fragment$SearchContentFragment$SEARCH_SHOW_STATE:[I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->values()[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$fragment$SearchContentFragment$SEARCH_SHOW_STATE:[I

    const/4 v1, 0x1

    :try_start_a
    sget-object v2, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_12} :catch_12

    :catch_12
    const/4 v0, 0x2

    :try_start_13
    sget-object v2, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$fragment$SearchContentFragment$SEARCH_SHOW_STATE:[I

    sget-object v3, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_1d} :catch_1d

    :catch_1d
    invoke-static {}, Lcom/android/fileexplorer/adapter/search/SearchType;->values()[Lcom/android/fileexplorer/adapter/search/SearchType;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    :try_start_26
    sget-object v3, Lcom/android/fileexplorer/adapter/search/SearchType;->FileName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_2e} :catch_2e

    :catch_2e
    :try_start_2e
    sget-object v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    sget-object v2, Lcom/android/fileexplorer/adapter/search/SearchType;->Tag:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_38
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_38} :catch_38

    :catch_38
    :try_start_38
    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$3;->$SwitchMap$com$android$fileexplorer$adapter$search$SearchType:[I

    sget-object v1, Lcom/android/fileexplorer/adapter/search/SearchType;->AppName:Lcom/android/fileexplorer/adapter/search/SearchType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_43
    .catch Ljava/lang/NoSuchFieldError; {:try_start_38 .. :try_end_43} :catch_43

    :catch_43
    return-void
.end method
