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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method private constructor <init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Lcom/android/fileexplorer/fragment/WidgetChooseFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;-><init>(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    const v0, 0x7f0a00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/fileexplorer/model/category/FileCategoryEntity;

    if-nez p1, :cond_13

    const-string p1, "WidgetChooseFragment"

    const-string v0, "category is null"

    invoke-static {p1, v0}, Lcom/android/fileexplorer/model/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_13
    iget-object v0, p0, Lcom/android/fileexplorer/fragment/WidgetChooseFragment$WidgetChooseEntryClickListener;->this$0:Lcom/android/fileexplorer/fragment/WidgetChooseFragment;

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/fileexplorer/fragment/WidgetChooseFragment;->access$100(Lcom/android/fileexplorer/fragment/WidgetChooseFragment;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CHOICE_MODE"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1}, Lcom/android/fileexplorer/model/category/FileCategoryEntity;->getIndex()Ljava/lang/String;

    move-result-object p1

    const-string v2, "doc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;->Doc:Lcom/android/fileexplorer/controller/FileCategoryHelper$FileCategory;

    const-string v2, "category"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_3b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v2, Lcom/android/fileexplorer/event/PadContentChangeEvent;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    aget-object v0, v0, v3

    invoke-direct {v2, v4, v0, v3, v1}, Lcom/android/fileexplorer/event/PadContentChangeEvent;-><init>(Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)V

    invoke-virtual {p1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
