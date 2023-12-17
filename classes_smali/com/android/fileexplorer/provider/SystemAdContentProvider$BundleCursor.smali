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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .registers 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public getExtras()Landroid/os/Bundle;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/provider/SystemAdContentProvider$BundleCursor;->mBundle:Landroid/os/Bundle;

    return-object p1
.end method
