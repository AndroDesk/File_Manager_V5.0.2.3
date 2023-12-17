.class Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;
.super Ljava/lang/Object;
.source "AppCategoryFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;->showTips(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/category/AppCategoryFragment$2;->this$0:Lcom/android/fileexplorer/fragment/category/AppCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4
    return-void
.end method
