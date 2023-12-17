.class Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;
.super Ljava/lang/Object;
.source "DemoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/DemoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetChooseEntryClickListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/DemoFragment;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/fragment/DemoFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/DemoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/DemoFragment;Lcom/android/fileexplorer/fragment/DemoFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/DemoFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 1
    const v0, 0x7f0a00c7

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    .line 10
    if-nez p1, :cond_13

    .line 12
    const-string p1, "WidgetChooseFragment"

    .line 14
    const-string v0, "category is null"

    .line 16
    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void

    .line 20
    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/DemoFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/DemoFragment;

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 25
    move-result-object p1

    .line 26
    invoke-static {v0, p1}, Lcom/android/fileexplorer/fragment/DemoFragment;->access$100(Lcom/android/fileexplorer/fragment/DemoFragment;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 30
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 36
    const/4 v2, 0x0

    .line 37
    aget-object v2, p1, v2

    .line 39
    const/4 v3, 0x1

    .line 40
    aget-object p1, p1, v3

    .line 42
    invoke-direct {v1, v2, p1, v3}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 45
    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 48
    return-void
.end method
