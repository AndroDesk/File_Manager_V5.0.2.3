.class Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;
.super Ljava/lang/Object;
.source "MusicLyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/MusicLyricParser$Lyric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LyricLine"
.end annotation


# instance fields
.field public lyric:Ljava/lang/CharSequence;

.field public pos:I

.field public final synthetic this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/elements/MusicLyricParser$Lyric;)V
    .registers 2

    iput-object p1, p0, Lcom/miui/maml/elements/MusicLyricParser$Lyric$LyricLine;->this$0:Lcom/miui/maml/elements/MusicLyricParser$Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
