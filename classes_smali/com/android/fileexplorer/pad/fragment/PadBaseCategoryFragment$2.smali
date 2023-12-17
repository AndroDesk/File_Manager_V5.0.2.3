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
.method public constructor <init>(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    return-void
.end method

.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 1
    sget-object v0, Lcom/fileexplorer/advert/config/NativeAdConst;->CATEGORY_POS_ID_NATIVE_MAP:Ljava/util/HashMap;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_28

    .line 9
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    .line 11
    invoke-static {v0}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$000(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;)Lcom/android/fileexplorer/model/AdFileInfo;

    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_28

    .line 17
    if-eqz p2, :cond_28

    .line 19
    if-eqz p3, :cond_28

    .line 21
    iget-object v0, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    .line 23
    new-instance v1, Lcom/android/fileexplorer/model/AdFileInfo;

    .line 25
    invoke-direct {v1, p1, p2, p3}, Lcom/android/fileexplorer/model/AdFileInfo;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    .line 28
    invoke-static {v0, v1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$102(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Lcom/android/fileexplorer/model/AdFileInfo;)Lcom/android/fileexplorer/model/AdFileInfo;

    .line 31
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    .line 33
    invoke-static {p2, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$200(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V

    .line 36
    iget-object p2, p0, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment$2;->this$0:Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;

    .line 38
    invoke-static {p2, p1}, Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;->access$300(Lcom/android/fileexplorer/pad/fragment/PadBaseCategoryFragment;Ljava/lang/String;)V

    .line 41
    :cond_28
    return-void
.end method
