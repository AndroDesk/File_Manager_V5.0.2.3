.class public final Lorg/jaudiotagger/test/TestAudioTagger$DirFilter;
.super Ljava/lang/Object;
.source "TestAudioTagger.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jaudiotagger/test/TestAudioTagger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DirFilter"
.end annotation


# static fields
.field public static final IDENT:Ljava/lang/String; = "$Id: TestAudioTagger.java 832 2009-11-12 13:25:38Z paultaylor $"


# instance fields
.field public final synthetic this$0:Lorg/jaudiotagger/test/TestAudioTagger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lorg/jaudiotagger/test/TestAudioTagger;)V
    .registers 2

    iput-object p1, p0, Lorg/jaudiotagger/test/TestAudioTagger$DirFilter;->this$0:Lorg/jaudiotagger/test/TestAudioTagger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
