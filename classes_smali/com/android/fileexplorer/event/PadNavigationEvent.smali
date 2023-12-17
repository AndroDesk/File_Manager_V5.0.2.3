.class public Lcom/android/fileexplorer/event/PadNavigationEvent;
.super Ljava/lang/Object;
.source "PadNavigationEvent.java"


# instance fields
.field public pageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/event/PadNavigationEvent;->pageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/event/PadNavigationEvent;->pageName:Ljava/lang/String;

    return-object v0
.end method
