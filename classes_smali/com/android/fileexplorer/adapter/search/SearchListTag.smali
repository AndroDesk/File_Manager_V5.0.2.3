.class Lcom/android/fileexplorer/adapter/search/SearchListTag;
.super Ljava/lang/Object;
.source "SearchListTag.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/fileexplorer/adapter/search/SearchTag;",
            ">;"
        }
    .end annotation
.end field

.field public listName:Ljava/lang/String;

.field public type:Lcom/android/fileexplorer/adapter/search/SearchType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchListTag;->list:Ljava/util/List;

    .line 11
    return-void
.end method
