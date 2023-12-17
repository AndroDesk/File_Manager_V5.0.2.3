.class public Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;
.super Ljava/lang/Object;
.source "SearchKeyEvent.java"


# instance fields
.field private mSearchKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;->mSearchKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getSearchKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/fileexplorer/mirror/events/SearchKeyEvent;->mSearchKey:Ljava/lang/String;

    return-object v0
.end method
