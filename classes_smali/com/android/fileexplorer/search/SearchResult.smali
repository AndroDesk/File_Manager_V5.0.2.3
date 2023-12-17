.class public Lcom/android/fileexplorer/search/SearchResult;
.super Ljava/lang/Object;
.source "SearchResult.java"


# instance fields
.field private extra:Landroid/os/Bundle;

.field private result:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResult;->result:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/android/fileexplorer/search/SearchResult;->type:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResult;->extra:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/Class;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/fileexplorer/search/SearchResult;->result:Ljava/util/List;

    .line 7
    iput-object p2, p0, Lcom/android/fileexplorer/search/SearchResult;->type:Ljava/lang/Class;

    .line 8
    iput-object p3, p0, Lcom/android/fileexplorer/search/SearchResult;->extra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResult;->extra:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public getResult()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResult;->result:Ljava/util/List;

    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/search/SearchResult;->type:Ljava/lang/Class;

    .line 3
    return-object v0
.end method
