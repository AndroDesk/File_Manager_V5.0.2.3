.class public Lcom/android/fileexplorer/event/PadNavigationEvent;
.super Ljava/lang/Object;
.source "PadNavigationEvent.java"


# instance fields
.field public pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/event/PadNavigationEvent;->pageName:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/event/PadNavigationEvent;->pageName:Ljava/lang/String;

    .line 3
    return-object v0
.end method
