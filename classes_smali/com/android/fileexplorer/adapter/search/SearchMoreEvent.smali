.class public Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;
.super Ljava/lang/Object;
.source "SearchMoreEvent.java"


# instance fields
.field private mExtra:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->mExtra:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtra()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/adapter/search/SearchMoreEvent;->mExtra:Landroid/os/Bundle;

    return-object v0
.end method
