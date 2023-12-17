.class public Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;
.super Ljava/lang/Object;
.source "MirrorSideBarDropEvent.java"


# instance fields
.field public event:Landroid/view/DragEvent;

.field public info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Landroid/view/DragEvent;Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->event:Landroid/view/DragEvent;

    iput-object p2, p0, Lcom/android/fileexplorer/mirror/model/MirrorSideBarDropEvent;->info:Lcom/android/fileexplorer/mirror/model/MirrorBaseInfo;

    return-void
.end method
