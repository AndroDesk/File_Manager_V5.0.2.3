.class Lcom/android/fileexplorer/fragment/RecentFragment$12;
.super Ljava/lang/Object;
.source "RecentFragment.java"

# interfaces
.implements Lcom/fileexplorer/advert/listenter/AdViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/fragment/RecentFragment;->getNativeAdView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/RecentFragment;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/fragment/RecentFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/RecentFragment$12;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;)V
    .registers 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onRenderSuccess:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FE_AD_LOG"

    invoke-static {p2, p1}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderSuccess(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V
    .registers 6

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderSuccess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FE_AD_LOG"

    invoke-static {v1, v0}, Lcom/android/fileexplorer/model/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "1.301.1.12"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    if-eqz p2, :cond_2c

    if-eqz p3, :cond_2c

    .line 4
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$12;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    new-instance v1, Lcom/android/fileexplorer/model/AdFileItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/fileexplorer/model/AdFileItem;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2302(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;

    :cond_2c
    const-string v0, "1.301.1.13"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    if-eqz p2, :cond_42

    if-eqz p3, :cond_42

    .line 6
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/RecentFragment$12;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    new-instance v1, Lcom/android/fileexplorer/model/AdFileItem;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/fileexplorer/model/AdFileItem;-><init>(Ljava/lang/String;Landroid/view/View;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2402(Lcom/android/fileexplorer/fragment/RecentFragment;Lcom/android/fileexplorer/model/AdFileItem;)Lcom/android/fileexplorer/model/AdFileItem;

    .line 7
    :cond_42
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$12;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$1800(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    .line 8
    iget-object p2, p0, Lcom/android/fileexplorer/fragment/RecentFragment$12;->this$0:Lcom/android/fileexplorer/fragment/RecentFragment;

    invoke-static {p2, p1}, Lcom/android/fileexplorer/fragment/RecentFragment;->access$2500(Lcom/android/fileexplorer/fragment/RecentFragment;Ljava/lang/String;)V

    return-void
.end method
