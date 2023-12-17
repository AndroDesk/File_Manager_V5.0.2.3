.class public Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegatePic;
.super Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;
.source "FileInfoListChildDelegatePic.java"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/fileexplorer/recyclerview/delegate/FileInfoListChildDelegate;-><init>(Lcom/android/fileexplorer/recyclerview/adapter/checkable/CheckableChildRecyclerViewAdapter;)V

    return-void
.end method


# virtual methods
.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d00d7

    return v0
.end method
