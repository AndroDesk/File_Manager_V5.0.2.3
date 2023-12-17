.class Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;
.super Ljava/lang/Object;
.source "PadBaseCategoryFragment.java"

# interfaces
.implements Lcom/fileexplorer/advert/listenter/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->getNativeAdView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    sget-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)Lcom/android/fileexplorer/model/AdFileInfo;

    move-result-object v0

    if-nez v0, :cond_28

    if-eqz p2, :cond_28

    if-eqz p3, :cond_28

    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    new-instance v1, Lcom/android/fileexplorer/model/AdFileInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/fileexplorer/model/AdFileInfo;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$102(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Lcom/android/fileexplorer/model/AdFileInfo;)Lcom/android/fileexplorer/model/AdFileInfo;

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V

    :cond_28
    return-void
.end method
