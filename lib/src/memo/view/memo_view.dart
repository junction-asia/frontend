import 'package:data/data/land/land_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leg_work/src/camera/view/camera_page.dart';
import 'package:leg_work/src/memo/bloc/memo_bloc.dart';

class MemoView extends StatelessWidget {
  const MemoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MemoBloc, MemoState>(builder: (context, state) {
      state as ProgressMemoState;
      return GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            elevation: 0.0,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                // 경로
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 지역 위치
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            state.landsName,
                            style: const TextStyle(
                              color: Color(0xFFE6E6E6),
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CameraPage()));
                            },
                            child: const Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 139.04,
                  height: 41.23,
                  decoration: const ShapeDecoration(
                    color: Color(0xFF101010),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0),
                      ),
                    ),
                  ),
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 17.0),
                      child: Text(
                        '나의 체크리스트 : 토지',
                        style: TextStyle(
                          color: Color(0xFF2C88FF),
                          fontSize: 10,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF101010),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15.0),
                        bottomLeft: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 16,
                        offset: Offset(0, -8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 23),
                        ListView(
                          shrinkWrap: true,
                          primary: false,
                          children: state.groupedInfo.keys.map((groupName) {
                            List<Infos> groupInfos =
                                state.groupedInfo[groupName]!;
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MemoListTitleComponent(name: groupName),
                                Column(
                                  children: groupInfos.map((info) {
                                    return MemoComponent(
                                      infos: info,
                                    );
                                  }).toList(),
                                ),
                                const SizedBox(height: 50),
                              ],
                            );
                          }).toList(),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  decoration: const ShapeDecoration(
                    color: Color(0xFF101010),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x19000000),
                        blurRadius: 16,
                        offset: Offset(0, -8),
                        spreadRadius: 0,
                      )
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 30.0),
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.landsName,
                              style: const TextStyle(
                                color: Color(0xFFE6E6E6),
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(width: 8.0),
                            Container(
                              width: 18,
                              height: 18,
                              decoration: const ShapeDecoration(
                                color: Color(0xFF316033),
                                shape: OvalBorder(),
                              ),
                              child: const Center(
                                  child: Text(
                                '답',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                            )
                          ],
                        ),
                        const SizedBox(height: 10),
                        state.lands.images.isEmpty
                            ? const SizedBox(
                                height: 200,
                                child: Center(
                                    child: Text(
                                  "이미지가 없습니다",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                )))
                            : GridView.builder(
                                primary: false,
                                shrinkWrap: true,
                                gridDelegate:
                                    const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 4, // 4개의 열로 정의
                                ),
                                itemCount: state.lands.images.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Image.network(
                                    state.lands.images[index],
                                    fit: BoxFit.cover,
                                  );
                                },
                              ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                CommentsInputWidget(
                  landId: state.lands.id,
                ),
                const SizedBox(
                  height: 12,
                ),
                Container(
                    decoration: const ShapeDecoration(
                      color: Color(0xFF101010),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      shadows: [
                        BoxShadow(
                          color: Color(0x19000000),
                          blurRadius: 16,
                          offset: Offset(0, -8),
                          spreadRadius: 0,
                        )
                      ],
                    ),
                    child: ListView.builder(
                      itemCount: state.lands.comments.length,
                      primary: false,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 17.0),
                          child: CommentsWidget(
                              comments: state.lands.comments[index]),
                        );
                      },
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.1,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}

class CommentsWidget extends StatelessWidget {
  const CommentsWidget({
    super.key,
    required this.comments,
  });
  final Comments comments;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 54,
          height: 54,
          decoration: ShapeDecoration(
            color: Colors.grey,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(27),
            ),
          ),
        ),
        const SizedBox(
          width: 13,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              comments.login_id,
              style: const TextStyle(
                color: Color(0xFF333D4B),
                fontSize: 17,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.7,
              child: Text(
                comments.comment,
                style: const TextStyle(
                  color: Color(0xFFB3B3B3),
                  fontSize: 17,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}

class CommentsInputWidget extends StatefulWidget {
  const CommentsInputWidget({
    super.key,
    required this.landId,
  });
  final int landId;
  @override
  State<CommentsInputWidget> createState() => _CommentsInputWidgetState();
}

class _CommentsInputWidgetState extends State<CommentsInputWidget> {
  bool isEditing = false;
  TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEditing = true;
        });
      },
      child: Container(
        decoration: const ShapeDecoration(
          color: Color(0xFF101010),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15.0),
            ),
          ),
          shadows: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 16,
              offset: Offset(0, -8),
              spreadRadius: 0,
            )
          ],
        ),
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: isEditing
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "후기를 남겨주세요!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 15.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 37.0),
                    child: TextField(
                      controller: textEditingController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color(0xff9F4739),
                        hintText: '후기를 입력하세요',
                        hintStyle: TextStyle(
                          color: Colors.white,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                      ),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                      onSubmitted: (text) {
                        context.read<MemoBloc>().add(
                              SubmitCommentMemoEvent(
                                comment: textEditingController.text,
                                id: widget.landId,
                              ),
                            );
                      },
                    ),
                  ),
                ],
              )
            : const Center(
                child: Text(
                  "후기를 남겨주세요!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
      ),
    );
  }
}

class MemoComponent extends StatelessWidget {
  const MemoComponent({
    super.key,
    required this.infos,
  });
  final Infos infos;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                infos.name,
                style: const TextStyle(
                  color: Color(0xFFF6F6F6),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          thumbWidget(infos: infos)
        ],
      ),
    );
  }
}

class thumbWidget extends StatefulWidget {
  const thumbWidget({
    super.key,
    required this.infos,
  });

  final Infos infos;

  @override
  State<thumbWidget> createState() => _thumbWidgetState();
}

class _thumbWidgetState extends State<thumbWidget> {
  bool upCheck = false;
  bool downCheck = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              upCheck = !upCheck;
            });
          },
          child: Column(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(),
                child: Icon(
                  Icons.thumb_up,
                  color: upCheck
                      ? const Color(0xff3182F6)
                      : const Color(0xff262626),
                ),
              ),
              Text(
                "${widget.infos.like_count}",
                style: TextStyle(
                  fontSize: 10,
                  color: upCheck
                      ? const Color(0xff3182F6)
                      : const Color(0xff262626),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 17,
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              downCheck = !downCheck;
            });
          },
          child: Column(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: const BoxDecoration(),
                child: Icon(
                  Icons.thumb_down,
                  color: downCheck
                      ? const Color(0xff3182F6)
                      : const Color(0xff262626),
                ),
              ),
              Text(
                "${widget.infos.unlike_count}",
                style: TextStyle(
                    fontSize: 10,
                    color: downCheck
                        ? const Color(0xff3182F6)
                        : const Color(0xff262626)),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class MemoListTitleComponent extends StatelessWidget {
  const MemoListTitleComponent({
    super.key,
    required this.name,
  });

  final String name;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 38,
        padding: const EdgeInsets.only(left: 13.89, right: 13.89),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(23),
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
