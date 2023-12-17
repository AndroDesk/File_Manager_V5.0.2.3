.class public final synthetic Lcom/android/fileexplorer/filemanager/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/fileexplorer/filemanager/FileOperationManager$15;


# direct methods
.method public synthetic constructor <init>(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/filemanager/e;->a:Lcom/android/fileexplorer/filemanager/FileOperationManager$15;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/filemanager/e;->a:Lcom/android/fileexplorer/filemanager/FileOperationManager$15;

    invoke-static {v0}, Lcom/android/fileexplorer/filemanager/FileOperationManager$15;->a(Lcom/android/fileexplorer/filemanager/FileOperationManager$15;)V

    return-void
.end method
