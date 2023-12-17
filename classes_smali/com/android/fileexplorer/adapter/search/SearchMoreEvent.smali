.class public Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;
.super Ljava/lang/Object;
.source "SearchMoreEvent.java"


# instance fields
.field private mExtra:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->mExtra:Landroid/os/Bundle;

    .line 6
    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->mExtra:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method
