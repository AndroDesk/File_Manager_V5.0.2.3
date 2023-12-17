.class final enum Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;
.super Ljava/lang/Enum;
.source "MirrorSearchResultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

.field public static final enum SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

.field public static final enum SHOW_SEARCH_LOADING:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

.field public static final enum SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    const-string v1, "SHOW_SEARCH_HINT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_HINT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    new-instance v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    const-string v3, "SHOW_SEARCH_LOADING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_LOADING:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    new-instance v3, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    const-string v5, "SHOW_SEARCH_RESULT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->SHOW_SEARCH_RESULT:Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->$VALUES:[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;
    .registers 2

    const-class v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    return-object p0
.end method

.method public static values()[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;
    .registers 1

    sget-object v0, Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->$VALUES:[Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    invoke-virtual {v0}, [Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/fileexplorer/mirror/fragments/MirrorSearchResultFragment$State;

    return-object v0
.end method
