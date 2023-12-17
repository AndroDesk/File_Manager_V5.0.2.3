.class Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;
.super Landroid/view/ViewOutlineProvider;
.source "WidgetChooseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/WidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;


# direct methods
.method public constructor <init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    .line 3
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$1;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 7
    const v1, 0x7f070805

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v4

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 21
    move-result v5

    .line 22
    int-to-float v6, v0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v3, 0x0

    .line 25
    move-object v1, p2

    .line 26
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 29
    return-void
.end method
