.class Lmiuix/animation/controller/FolmeTouch$ListViewInfo;
.super Ljava/lang/Object;
.source "FolmeTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/animation/controller/FolmeTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListViewInfo"
.end annotation


# instance fields
.field public itemView:Landroid/view/View;

.field public listView:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lmiuix/animation/controller/FolmeTouch$1;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lmiuix/animation/controller/FolmeTouch$ListViewInfo;-><init>()V

    .line 4
    return-void
.end method
