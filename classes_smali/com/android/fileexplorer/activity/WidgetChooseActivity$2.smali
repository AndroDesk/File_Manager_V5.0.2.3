.class Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;
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
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/WidgetChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/WidgetChooseActivity$2;->this$0:Lcom/android/fileexplorer/activity/WidgetChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method