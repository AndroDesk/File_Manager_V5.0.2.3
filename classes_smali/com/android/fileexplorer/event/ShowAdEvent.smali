.class public Lcom/android/fileexplorer/event/ShowAdEvent;
.super Ljava/lang/Object;
.source "ShowAdEvent.java"


# instance fields
.field public mPlaceId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/fileexplorer/event/ShowAdEvent;->mPlaceId:Ljava/lang/String;

    return-void
.end method
