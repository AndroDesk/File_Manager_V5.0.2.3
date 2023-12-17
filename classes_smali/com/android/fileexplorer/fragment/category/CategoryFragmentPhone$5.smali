.class Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;
.super Ljava/lang/Object;
.source "CategoryFragmentPhone.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    invoke-static {v0}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$900(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;)Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone$5;->this$0:Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;->access$000(Lcom/android/fileexplorer/fragment/category/CategoryFragmentPhone;Z)V

    :cond_e
    return-void
.end method
