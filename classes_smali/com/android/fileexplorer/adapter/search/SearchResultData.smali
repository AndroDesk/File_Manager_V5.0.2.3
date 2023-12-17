.class public Lcom/android/fileexplorer/adapter/search/SearchResultData;
.super Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;
.source "SearchResultData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;"
    }
.end annotation


# static fields
.field public static final SEARCH_TEXT:Ljava/lang/String; = "searchText"


# instance fields
.field public extra:Landroid/os/Bundle;

.field public fileInfo:Lcom/android/fileexplorer/model/FileInfo;

.field public item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public type:I

.field public viewType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/android/fileexplorer/mirror/model/MirrorBaseItemInfo;-><init>()V

    .line 4
    return-void
.end method
