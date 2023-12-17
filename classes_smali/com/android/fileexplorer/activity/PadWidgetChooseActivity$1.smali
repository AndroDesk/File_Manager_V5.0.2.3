.class Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;
.super Ljava/lang/Object;
.source "PadWidgetChooseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;->onCreateImpl(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;->this$0:Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/android/fileexplorer/activity/PadWidgetChooseActivity$1;->this$0:Lcom/android/fileexplorer/activity/PadWidgetChooseActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method
