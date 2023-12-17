.class public final synthetic Lcom/android/fileexplorer/mirror/fragments/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

.field public final synthetic b:I

.field public final synthetic c:Lcom/android/fileexplorer/model/FileInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;ILcom/android/fileexplorer/model/FileInfo;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/c;->a:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iput p2, p0, Lcom/android/fileexplorer/mirror/fragments/c;->b:I

    iput-object p3, p0, Lcom/android/fileexplorer/mirror/fragments/c;->c:Lcom/android/fileexplorer/model/FileInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/c;->a:Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;

    iget v1, p0, Lcom/android/fileexplorer/mirror/fragments/c;->b:I

    iget-object v2, p0, Lcom/android/fileexplorer/mirror/fragments/c;->c:Lcom/android/fileexplorer/model/FileInfo;

    invoke-static {v0, v1, v2}, Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;->e(Lcom/android/fileexplorer/mirror/fragments/MirrorFileFragment;ILcom/android/fileexplorer/model/FileInfo;)V

    return-void
.end method
