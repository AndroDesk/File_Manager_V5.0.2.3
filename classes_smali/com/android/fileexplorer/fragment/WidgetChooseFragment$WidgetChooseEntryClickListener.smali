.class Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;
.super Ljava/lang/Object;
.source "WidgetChooseFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/fileexplorer/fragment/WidgetChooseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WidgetChooseEntryClickListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/fragment/WidgetChooseFragment;


# direct methods
.method private constructor <init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;)V
    .registers 3

    .line 2
    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

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
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    .line 22
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->access$100(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Ljava/lang/String;)[Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Landroid/os/Bundle;

    .line 32
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string v2, "CHOICE_MODE"

    .line 37
    const/4 v3, 0x1

    .line 38
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    .line 44
    move-result-object p1

    .line 45
    const-string v2, "doc"

    .line 47
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_3b

    .line 53
    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    .line 55
    const-string v2, "category"

    .line 57
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 60
    :cond_3b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    .line 63
    move-result-object p1

    .line 64
    new-instance v2, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    .line 66
    const/4 v4, 0x0

    .line 67
    aget-object v4, v0, v4

    .line 69
    aget-object v0, v0, v3

    .line 71
    invoke-direct {v2, v4, v0, v3, v1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 74
    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 77
    return-void
.end method
