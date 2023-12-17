.class public abstract Lcom/android/fileexplorer/activity/BaseWidgetChooseActivity;
.super Lcom/android/fileexplorer/activity/BaseActivity;
.source "BaseWidgetChooseActivity.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/fileexplorer/activity/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnchorView()Landroid/view/View;
.end method

.method public abstract isLargeScreenMode()Z
.end method
