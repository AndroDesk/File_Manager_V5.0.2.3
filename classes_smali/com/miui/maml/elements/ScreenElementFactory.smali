.class public Lcom/miui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "ScreenElementFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    }
.end annotation


# instance fields
.field private mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .registers 5

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 5
    :try_start_4
    const-string v1, "Image"

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_12

    .line 13
    new-instance v0, Lcom/miui/maml/elements/ImageScreenElement;

    .line 15
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 18
    return-object v0

    .line 19
    :cond_12
    const-string v1, "Graphics"

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_20

    .line 27
    new-instance v0, Lcom/miui/maml/elements/GraphicsElement;

    .line 29
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 32
    return-object v0

    .line 33
    :cond_20
    const-string v1, "Time"

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2e

    .line 41
    new-instance v0, Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 43
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 46
    return-object v0

    .line 47
    :cond_2e
    const-string v1, "ImageNumber"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_23d

    .line 55
    const-string v1, "ImageChars"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_40

    .line 63
    goto/16 :goto_23d

    .line 65
    :cond_40
    const-string v1, "Text"

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_4e

    .line 73
    new-instance v0, Lcom/miui/maml/elements/TextScreenElement;

    .line 75
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 78
    return-object v0

    .line 79
    :cond_4e
    const-string v1, "DateTime"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_5c

    .line 87
    new-instance v0, Lcom/miui/maml/elements/DateTimeScreenElement;

    .line 89
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 92
    return-object v0

    .line 93
    :cond_5c
    const-string v1, "Button"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 98
    move-result v1

    .line 99
    if-eqz v1, :cond_6a

    .line 101
    new-instance v0, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 103
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 106
    return-object v0

    .line 107
    :cond_6a
    const-string v1, "MusicControl"

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_78

    .line 115
    new-instance v0, Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 117
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 120
    return-object v0

    .line 121
    :cond_78
    const-string v1, "ElementGroup"

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_237

    .line 129
    const-string v1, "Group"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_8a

    .line 137
    goto/16 :goto_237

    .line 139
    :cond_8a
    const-string v1, "Var"

    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_98

    .line 147
    new-instance v0, Lcom/miui/maml/elements/VariableElement;

    .line 149
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 152
    return-object v0

    .line 153
    :cond_98
    const-string v1, "VarArray"

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_a6

    .line 161
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 163
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 166
    return-object v0

    .line 167
    :cond_a6
    const-string v1, "AutoScaleGroup"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 172
    move-result v1

    .line 173
    if-eqz v1, :cond_b4

    .line 175
    new-instance v0, Lcom/miui/maml/elements/AutoScaleElementGroup;

    .line 177
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AutoScaleElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 180
    return-object v0

    .line 181
    :cond_b4
    const-string v1, "SpectrumVisualizer"

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_c2

    .line 189
    new-instance v0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 191
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 194
    return-object v0

    .line 195
    :cond_c2
    const-string v1, "Slider"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_d0

    .line 203
    new-instance v0, Lcom/miui/maml/elements/AdvancedSlider;

    .line 205
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 208
    return-object v0

    .line 209
    :cond_d0
    const-string v1, "FramerateController"

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_de

    .line 217
    new-instance v0, Lcom/miui/maml/elements/FramerateController;

    .line 219
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 222
    return-object v0

    .line 223
    :cond_de
    const-string v1, "FolmeConfig"

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_ec

    .line 231
    new-instance v0, Lcom/miui/maml/elements/FolmeConfigElement;

    .line 233
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 236
    return-object v0

    .line 237
    :cond_ec
    const-string v1, "FolmeState"

    .line 239
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 242
    move-result v1

    .line 243
    if-eqz v1, :cond_fa

    .line 245
    new-instance v0, Lcom/miui/maml/elements/FolmeStateElement;

    .line 247
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FolmeStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 250
    return-object v0

    .line 251
    :cond_fa
    const-string v1, "VirtualScreen"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 256
    move-result v1

    .line 257
    if-eqz v1, :cond_108

    .line 259
    new-instance v0, Lcom/miui/maml/elements/VirtualScreen;

    .line 261
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 264
    return-object v0

    .line 265
    :cond_108
    const-string v1, "VirtualElement"

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 270
    move-result v1

    .line 271
    if-eqz v1, :cond_116

    .line 273
    new-instance v0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    .line 275
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 278
    return-object v0

    .line 279
    :cond_116
    const-string v1, "Line"

    .line 281
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_124

    .line 287
    new-instance v0, Lcom/miui/maml/elements/LineScreenElement;

    .line 289
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 292
    return-object v0

    .line 293
    :cond_124
    const-string v1, "Rectangle"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 298
    move-result v1

    .line 299
    if-eqz v1, :cond_132

    .line 301
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement;

    .line 303
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 306
    return-object v0

    .line 307
    :cond_132
    const-string v1, "Ellipse"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 312
    move-result v1

    .line 313
    if-eqz v1, :cond_140

    .line 315
    new-instance v0, Lcom/miui/maml/elements/EllipseScreenElement;

    .line 317
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 320
    return-object v0

    .line 321
    :cond_140
    const-string v1, "Circle"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 326
    move-result v1

    .line 327
    if-eqz v1, :cond_14e

    .line 329
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement;

    .line 331
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 334
    return-object v0

    .line 335
    :cond_14e
    const-string v1, "Arc"

    .line 337
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 340
    move-result v1

    .line 341
    if-eqz v1, :cond_15c

    .line 343
    new-instance v0, Lcom/miui/maml/elements/ArcScreenElement;

    .line 345
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 348
    return-object v0

    .line 349
    :cond_15c
    const-string v1, "Curve"

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 354
    move-result v1

    .line 355
    if-eqz v1, :cond_16a

    .line 357
    new-instance v0, Lcom/miui/maml/elements/CurveScreenElement;

    .line 359
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 362
    return-object v0

    .line 363
    :cond_16a
    const-string v1, "List"

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 368
    move-result v1

    .line 369
    if-eqz v1, :cond_178

    .line 371
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement;

    .line 373
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 376
    return-object v0

    .line 377
    :cond_178
    const-string v1, "Paint"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 382
    move-result v1

    .line 383
    if-eqz v1, :cond_186

    .line 385
    new-instance v0, Lcom/miui/maml/elements/PaintScreenElement;

    .line 387
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 390
    return-object v0

    .line 391
    :cond_186
    const-string v1, "Mirror"

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 396
    move-result v1

    .line 397
    if-eqz v1, :cond_194

    .line 399
    new-instance v0, Lcom/miui/maml/elements/MirrorScreenElement;

    .line 401
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 404
    return-object v0

    .line 405
    :cond_194
    const-string v1, "Window"

    .line 407
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 410
    move-result v1

    .line 411
    if-eqz v1, :cond_1a2

    .line 413
    new-instance v0, Lcom/miui/maml/elements/WindowScreenElement;

    .line 415
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 418
    return-object v0

    .line 419
    :cond_1a2
    const-string v1, "WebView"

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 424
    move-result v1

    .line 425
    if-eqz v1, :cond_1b0

    .line 427
    new-instance v0, Lcom/miui/maml/elements/WebViewScreenElement;

    .line 429
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 432
    return-object v0

    .line 433
    :cond_1b0
    const-string v1, "Layer"

    .line 435
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 438
    move-result v1

    .line 439
    if-eqz v1, :cond_1be

    .line 441
    new-instance v0, Lcom/miui/maml/elements/LayerScreenElement;

    .line 443
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 446
    return-object v0

    .line 447
    :cond_1be
    const-string v1, "GLLayer"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_1cc

    .line 455
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 457
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 460
    return-object v0

    .line 461
    :cond_1cc
    const-string v1, "Array"

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 466
    move-result v1

    .line 467
    if-eqz v1, :cond_1da

    .line 469
    new-instance v0, Lcom/miui/maml/elements/ScreenElementArray;

    .line 471
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 474
    return-object v0

    .line 475
    :cond_1da
    const-string v1, "CanvasDrawer"

    .line 477
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 480
    move-result v1

    .line 481
    if-eqz v1, :cond_1e8

    .line 483
    new-instance v0, Lcom/miui/maml/elements/CanvasDrawerElement;

    .line 485
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 488
    return-object v0

    .line 489
    :cond_1e8
    const-string v1, "Function"

    .line 491
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 494
    move-result v1

    .line 495
    if-eqz v1, :cond_1f6

    .line 497
    new-instance v0, Lcom/miui/maml/elements/FunctionElement;

    .line 499
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/FunctionElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 502
    return-object v0

    .line 503
    :cond_1f6
    const-string v1, "AnimConfig"

    .line 505
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 508
    move-result v1

    .line 509
    if-eqz v1, :cond_204

    .line 511
    new-instance v0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 513
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 516
    return-object v0

    .line 517
    :cond_204
    const-string v1, "AnimState"

    .line 519
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_212

    .line 525
    new-instance v0, Lcom/miui/maml/elements/AnimStateElement;

    .line 527
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/AnimStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 530
    return-object v0

    .line 531
    :cond_212
    const-string v1, "Video"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_220

    .line 539
    new-instance v0, Lcom/miui/maml/elements/video/VideoElement;

    .line 541
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/video/VideoElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 544
    return-object v0

    .line 545
    :cond_220
    const-string v1, "Pbr"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 550
    move-result v0

    .line 551
    if-eqz v0, :cond_22e

    .line 553
    new-instance v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 555
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 558
    return-object v0

    .line 559
    :cond_22e
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 561
    if-eqz v0, :cond_25d

    .line 563
    invoke-interface {v0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 566
    move-result-object p1

    .line 567
    return-object p1

    .line 568
    :cond_237
    :goto_237
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 570
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 573
    return-object v0

    .line 574
    :cond_23d
    :goto_23d
    new-instance v0, Lcom/miui/maml/elements/ImageNumberScreenElement;

    .line 576
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_242
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_242} :catch_243

    .line 579
    return-object v0

    .line 580
    :catch_243
    move-exception p1

    .line 581
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 584
    new-instance p2, Ljava/lang/StringBuilder;

    .line 586
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 589
    const-string v0, "fail to create element."

    .line 591
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 594
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 597
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 600
    move-result-object p1

    .line 601
    const-string p2, "ScreenElementFactory"

    .line 603
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_25d
    const/4 p1, 0x0

    .line 607
    return-object p1
.end method

.method public getCallback()Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 3
    return-object v0
.end method

.method public setCallback(Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 3
    return-void
.end method
