.class final Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;
.super Landroid/database/MatrixCursor;
.source "SystemAdContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/provider/SystemAdContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BundleCursor"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Ljava/lang/String;

    .line 4
    invoke-direct {p0, v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 7
    iput-object p1, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    .line 9
    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    .line 3
    return-object v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    .line 3
    return-object p1
.end method
