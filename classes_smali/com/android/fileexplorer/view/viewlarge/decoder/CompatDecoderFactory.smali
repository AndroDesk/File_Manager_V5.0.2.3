.class public Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;
.super Ljava/lang/Object;
.source "CompatDecoderFactory.java"

# interfaces
.implements Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/fileexplorer/view/viewlarge/decoder/DecoderFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private mClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;->mClazz:Ljava/lang/Class;

    .line 6
    return-void
.end method


# virtual methods
.method public make()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/fileexplorer/view/viewlarge/decoder/CompatDecoderFactory;->mClazz:Ljava/lang/Class;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
