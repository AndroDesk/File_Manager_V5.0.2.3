.class public Lcom/android/fileexplorer/event/FileRemovedEvent;
.super Ljava/lang/Object;
.source "FileRemovedEvent.java"


# instance fields
.field private final mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/event/FileRemovedEvent;->mFilePath:Ljava/lang/String;

    .line 6
    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/event/FileRemovedEvent;->mFilePath:Ljava/lang/String;

    .line 3
    return-object v0
.end method
