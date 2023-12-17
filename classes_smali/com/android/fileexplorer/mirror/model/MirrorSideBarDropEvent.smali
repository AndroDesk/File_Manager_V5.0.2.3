.class public Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;
.super Ljava/lang/Object;
.source "MirrorSideBarDropEvent.java"


# instance fields
.field public event:Landroid/view/DragEvent;

.field public info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;


# direct methods
.method public constructor <init>(Landroid/view/DragEvent;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->event:Landroid/view/DragEvent;

    .line 6
    iput-object p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    .line 8
    return-void
.end method
