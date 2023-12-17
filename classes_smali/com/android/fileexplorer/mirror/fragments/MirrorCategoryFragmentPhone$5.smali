.class Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;
.super Ljava/lang/Object;
.source "MirrorCategoryFragmentPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;->access$200(Lcom/android/fileexplorer/mirror/fragments/MirrorCategoryFragmentPhone;Z)V

    :cond_e
    return-void
.end method
