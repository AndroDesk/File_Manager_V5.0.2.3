.class final enum Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;
.super Ljava/lang/Enum;
.source "SearchContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/SearchContentFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SEARCH_SHOW_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

.field public static final enum SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

.field public static final enum SEARCH_INVALID:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

.field public static final enum SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    const-string v1, "SEARCH_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_INVALID:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    new-instance v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    const-string v3, "SEARCH_RESULT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_RESULT:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    new-instance v3, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    const-string v5, "SEARCH_DETAIL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->SEARCH_DETAIL:Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->$VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->$VALUES:[Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/fragment/SearchContentFragment$SEARCH_SHOW_STATE;

    return-object v0
.end method
