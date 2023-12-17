.class Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;
.super Ljava/lang/Object;
.source "WidgetChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 1
    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$3;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    .line 3
    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 6
    return-void
.end method
